.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPersonSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;
    }
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;

.field public PersonId:Ljava/util/UUID;

.field public PersonSettingType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting$WSettingType;

.field public Priority:I

.field public Timestamp:Ljava/util/Date;

.field public Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    return-void
.end method
