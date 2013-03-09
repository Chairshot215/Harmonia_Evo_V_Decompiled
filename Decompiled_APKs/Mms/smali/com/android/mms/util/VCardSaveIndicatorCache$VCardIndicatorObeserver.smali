.class public Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
.super Ljava/lang/Object;
.source "VCardSaveIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardSaveIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCardIndicatorObeserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingListener"


# instance fields
.field bNotifyInUI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->bNotifyInUI:Z

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setRunInUIthread(Z)V
    .locals 0
    .parameter "notifyInUI"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->bNotifyInUI:Z

    .line 80
    return-void
.end method
