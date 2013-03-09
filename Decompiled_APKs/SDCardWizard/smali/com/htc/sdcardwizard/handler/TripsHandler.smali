.class final Lcom/htc/sdcardwizard/handler/TripsHandler;
.super Lcom/htc/sdcardwizard/handler/MediatorActionHandler;
.source "TripsHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.laputa"

.field private static final DELETE_ACTION:Ljava/lang/String; = "com.htc.laputa.trip.action.SHOW_TRIP_EDIT"

.field private static final INFO_URI:Ljava/lang/String; = "content://com.htc.laputa.trip.provider.TripProvider/tripinfo"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 8
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.laputa"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    const-string v1, "content://com.htc.laputa.trip.provider.TripProvider/tripinfo"

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/MediatorActionHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getDeleteAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "com.htc.laputa.trip.action.SHOW_TRIP_EDIT"

    return-object v0
.end method
