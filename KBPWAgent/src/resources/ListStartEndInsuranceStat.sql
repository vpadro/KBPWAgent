select count(p.id_polisy) liczba_polis,count(k.id_klinta) liczba_klient,count(s.id_pojazdu) liczba_pojazd
FROM projekt.f_polisa p
	  left join projekt.w_klient k on p.id_klient = k.id_klinta
	  left join projekt.w_pojazdy s on p.id_pojazdu = s.id_pojazdu