.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WNewItemNotification;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WNewItemNotification"
.end annotation


# instance fields
.field public LastViewDashboards:Ljava/util/Date;

.field public LastViewFootprints:Ljava/util/Date;

.field public LastViewRecommends:Ljava/util/Date;

.field public NewDashboardCount:I

.field public NewFootprintCount:I

.field public NewMessagesCount:I

.field public NewPeopleCount:I

.field public NewRecommendsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
