.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;
    }
.end annotation


# instance fields
.field public AccountType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

.field public Id:Ljava/util/UUID;

.field public IsDefault:Z

.field public Name:Ljava/lang/String;

.field public PersonCount:I

.field public RollupGroupId:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    return-void
.end method
