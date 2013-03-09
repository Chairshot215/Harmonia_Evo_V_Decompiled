.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WDeviceToken"
.end annotation


# instance fields
.field public AuthKey:Ljava/lang/String;

.field public IsEmailVerified:Ljava/lang/Boolean;

.field public IsHandsetVerified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
