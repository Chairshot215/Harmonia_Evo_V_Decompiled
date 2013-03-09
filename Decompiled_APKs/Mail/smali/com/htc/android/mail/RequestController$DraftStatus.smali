.class public Lcom/htc/android/mail/RequestController$DraftStatus;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DraftStatus"
.end annotation


# static fields
.field public static final sNotExist:I = 0x0

.field public static final sSaving:I = 0x1


# instance fields
.field private mStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$DraftStatus;->mStatus:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 4348
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$DraftStatus;->mStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4349
    .local v0, status:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4350
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "status"

    .prologue
    .line 4340
    if-nez p2, :cond_0

    .line 4341
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$DraftStatus;->mStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4345
    :goto_0
    return-void

    .line 4344
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$DraftStatus;->mStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
