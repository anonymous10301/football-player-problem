import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Position } from '@angular/compiler';

@Injectable({
  providedIn: 'root'
})
export class PositionsService {
  
  constructor(private httpclient:HttpClient) { }
  

}
