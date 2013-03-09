.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePeopleGroup;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WAggregatePeopleGroup"
.end annotation


# instance fields
.field public AccountTypes:Ljava/lang/String;

.field public IsDefault:Ljava/lang/Boolean;

.field public Name:Ljava/lang/String;

.field public PersonCount:I

.field public RollupGroupId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
