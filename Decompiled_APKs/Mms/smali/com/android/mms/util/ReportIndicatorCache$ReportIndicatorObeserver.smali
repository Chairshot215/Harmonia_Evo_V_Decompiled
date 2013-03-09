.class public Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
.super Ljava/lang/Object;
.source "ReportIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ReportIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportIndicatorObeserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingListener"


# instance fields
.field private bNotifyInUI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->bNotifyInUI:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->bNotifyInUI:Z

    return v0
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setRunInUIthread(Z)V
    .locals 0
    .parameter "notifyInUI"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->bNotifyInUI:Z

    .line 67
    return-void
.end method
