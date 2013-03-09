.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPhoneApplication;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPhoneApplication"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppURL:Ljava/lang/String;

.field public ApplicationStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

.field public Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
