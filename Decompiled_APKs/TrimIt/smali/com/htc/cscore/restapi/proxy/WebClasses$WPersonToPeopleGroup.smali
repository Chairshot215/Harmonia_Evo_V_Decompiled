.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonToPeopleGroup;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPersonToPeopleGroup"
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public PeopleGroupId:Ljava/util/UUID;

.field public PersonId:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
