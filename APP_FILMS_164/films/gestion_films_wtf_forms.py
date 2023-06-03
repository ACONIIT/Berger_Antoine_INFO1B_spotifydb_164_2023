"""Gestion des formulaires avec WTF pour les films
Fichier : gestion_films_wtf_forms.py
Auteur : OM 2022.04.11

"""
from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, DateField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, NumberRange, DataRequired
from wtforms.validators import Regexp
from wtforms.widgets import TextArea


class FormWTFAddFilm(FlaskForm):
    """
        Dans le formulaire "genres_ajouter_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_regexp = ""
    nom_film_add_wtf = StringField("Titre ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                         Regexp(nom_film_regexp, )])

    duree_film_add_wtf = IntegerField("Durée ", validators=[NumberRange(min=1, max=5000)])


    description_film_add_wtf = StringField("Artiste ", widget=TextArea())
    cover_link_film_add_wtf = StringField("Lien Cover ", widget=TextArea())
    datesortie_film_add_wtf = StringField("Album ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,)])
    submit = SubmitField("Enregistrer Son")


class FormWTFUpdateFilm(FlaskForm):
    """
        Dans le formulaire "film_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_regexp = ""
    nom_film_update_wtf = StringField("Titre ", widget=TextArea())
    duree_film_update_wtf = IntegerField("Durée ", validators=[NumberRange(min=1, max=5000)])


    description_film_update_wtf = StringField("Artiste ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,)])


    cover_link_film_update_wtf = StringField("Lien Cover ", widget=TextArea())
    datesortie_film_update_wtf = StringField("Album ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,)])

    submit = SubmitField("Update Son")


class FormWTFDeleteFilm(FlaskForm):
    """
        Dans le formulaire "film_delete_wtf.html"

        nom_film_delete_wtf : Champ qui reçoit la valeur du film, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "film".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_film".
    """
    nom_film_delete_wtf = StringField("Effacer ce Son")
    submit_btn_del_film = SubmitField("Effacer Son")
    submit_btn_conf_del_film = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")
