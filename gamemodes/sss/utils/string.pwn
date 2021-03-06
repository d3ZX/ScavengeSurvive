/*==============================================================================


	Southclaws' Scavenge and Survive

		Copyright (C) 2017 Barnaby "Southclaws" Keene

		This program is free software: you can redistribute it and/or modify it
		under the terms of the GNU General Public License as published by the
		Free Software Foundation, either version 3 of the License, or (at your
		option) any later version.

		This program is distributed in the hope that it will be useful, but
		WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
		See the GNU General Public License for more details.

		You should have received a copy of the GNU General Public License along
		with this program.  If not, see <http://www.gnu.org/licenses/>.


==============================================================================*/


stock isalphabetic(chr)
{
	if('a' <= chr <= 'z' || 'A' <= chr <= 'Z')
		return 1;

	return 0;
}

stock isalphanumeric(chr)
{
	if('a' <= chr <= 'z' || 'A' <= chr <= 'Z' || '0' <= chr <= '9')
		return 1;

	return 0;
}

// FormatSpecifier<'T'>(output[], timestamp)
// {
// 	strcat(output, TimestampToDateTime(timestamp, "%A %b %d %Y at %X"));
// }

// FormatSpecifier<'M'>(output[], millisecond)
// {
// 	strcat(output, MsToString(millisecond, "%h:%m:%s.%d"));
// }

stock atos(a[], size, s[], len = sizeof(s))
{
	s[0] = '[';

	for(new i; i < size; i++)
	{
		if(i != 0)
			strcat(s, ", ", len);

		format(s, len, "%s%d", s, a[i]);
	}

	s[strlen(s)] = ']';
}

stock atosr(a[], size = sizeof(a))
{
	new s[256];
	atos(a, size, s);
	return s;
}
