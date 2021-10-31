SELECT 
	p.id_polisy,
	COALESCE (k.imie_nazwisko,k.nazwa_firmy) nazwa,
	u.nazwa_firmy,
	p.numer_polisy,
	p.data_konca, 
	k.typ_klienta,
	p.liczba_rat,
	k.nr_telefonu_prywatny,k.nr_telefonu_firmowy

	FROM projekt.f_polisa p
	  left join projekt.w_firma_ubezpieczajaca u on p.id_firmy_ubezpiecz = u.id_firmy
	  left join projekt.w_klient k on p.id_klient = k.id_klinta
order by 1