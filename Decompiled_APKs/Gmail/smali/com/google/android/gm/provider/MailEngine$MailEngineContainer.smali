.class Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
.super Ljava/lang/Object;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailEngineContainer"
.end annotation


# instance fields
.field public mEngine:Lcom/google/android/gm/provider/MailEngine;

.field public final mEngineLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 483
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngineLock:Ljava/lang/Object;

    .line 484
    return-void
.end method
