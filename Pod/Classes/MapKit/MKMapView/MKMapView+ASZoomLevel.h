//
//  MKMapView+ASZoomLevel.h
//  Pods
//
//  Created by Whirlwind on 2016/8/10.
//
//

@import MapKit;

@interface MKMapView (ASZoomLevel)

@property (nonatomic, readonly) NSUInteger as_zoomLevel;

- (void)as_setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
                  zoomLevel:(NSUInteger)zoomLevel
                   animated:(BOOL)animated;

-(MKCoordinateRegion)as_regionWithCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
                                      andZoomLevel:(NSUInteger)zoomLevel;

@end
