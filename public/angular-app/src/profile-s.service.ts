import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { UserProfile } from './user-profile.model'; // Update import

@Injectable({
  providedIn: 'root'
})
export class ProfileSService {
  private apiUrl = 'http://localhost:3000/profile_s';

  constructor(private http: HttpClient) { }

  getProfiles(): Observable<UserProfile[]> {
    return this.http.get<UserProfile[]>(this.apiUrl);
  }

  createProfile(profile: UserProfile): Observable<UserProfile> {
    return this.http.post<UserProfile>(this.apiUrl, profile);
  }

  updateProfile(id: number, profile: UserProfile): Observable<UserProfile> {
    return this.http.put<UserProfile>(`${this.apiUrl}/${id}`, profile);
  }

  deleteProfile(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/${id}`);
  }
}