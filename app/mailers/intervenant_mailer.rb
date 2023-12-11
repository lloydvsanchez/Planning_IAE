class IntervenantMailer < ApplicationMailer
    include Roadie::Rails::Automatic
    default from: "IAE-Paris <planning-iae@philnoug.com>"

    def etat_services(intervenant_id, cours_ids, start_date, end_date)
        @cours = Cour.where(id:cours_ids)
        @intervenant = Intervenant.find(intervenant_id)
        @start_date = start_date
        @end_date = end_date
        mail(to: @intervenant.email, subject:"[PLANNING] Etat de services")
    end

    def notifier_cours(debut, fin, intervenant, cours, gestionnaires, envoi_log_id, test)
        @debut = debut
        @fin = fin - 1.day
        @cours = cours
        @gestionnaires = gestionnaires
        @intervenant = intervenant
        @message = EnvoiLog.find(envoi_log_id).msg
        if test
            mail(to: "fitsch-mouras.iae@univ-paris1.fr", cc: "philippe.nougaillon@gmail.com, pierreemmanuel.dacquet@gmail.com",
                subject:"[PLANNING] TEST / Rappel des cours de #{@intervenant.nom_prenom} du #{l @debut} au #{l @fin}")
        else
            mail(to: @intervenant.email, subject:"[PLANNING] Rappel de vos cours à l'IAE Paris du #{l @debut} au #{l @fin}")
        end
    end

    def notifier_srh(intervenant)
        @intervenant = intervenant
        mail(to: 'srh.iae@univ-paris1.fr', subject: "[PLANNING] Un nouvel intervenant nommé '#{intervenant.nom_prenom}' vient d'être créé")
    end

    def welcome_intervenant
        @user = params[:user]
        @password = params[:password]
        mail(to: @user.email,
            subject:"[PLANNING IAE Paris] Bienvenue !").tap do |message|
                message.mailgun_options = {
                    "tag" => [@user.nom, @user.prénom, "nouvel accès intervenant"]
                }
        end
    end

    def mes_sessions(intervenant, presence_slug)
        @intervenant = intervenant
        @presence_slug = presence_slug
        mail(to: @intervenant.email,
            subject:"[PLANNING] Vos sessions !").tap do |message|
                message.mailgun_options = {
                    "tag" => [@intervenant.nom, @intervenant.prenom, "sessions"]
                }
        end
    end

end
