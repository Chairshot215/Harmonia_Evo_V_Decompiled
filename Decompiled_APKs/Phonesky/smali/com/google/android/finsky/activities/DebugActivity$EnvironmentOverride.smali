.class public Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
.super Ljava/lang/Object;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnvironmentOverride"
.end annotation


# instance fields
.field public final checkoutTokenType:Ljava/lang/String;

.field public final dfeBaseUrl:Ljava/lang/String;

.field public final escrowUrl:Ljava/lang/String;

.field public final vendingBaseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dfeBaseUrl"
    .parameter "vendingBaseUrl"
    .parameter "checkoutTokenType"
    .parameter "escrowUrl"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->checkoutTokenType:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->escrowUrl:Ljava/lang/String;

    .line 73
    return-void
.end method
