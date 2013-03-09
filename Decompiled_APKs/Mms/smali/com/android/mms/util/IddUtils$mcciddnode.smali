.class public Lcom/android/mms/util/IddUtils$mcciddnode;
.super Ljava/lang/Object;
.source "IddUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/IddUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mcciddnode"
.end annotation


# instance fields
.field data:Lcom/android/mms/util/IddUtils$MCCIDD;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mcc"
    .parameter "idd"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/mms/util/IddUtils$MCCIDD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/util/IddUtils$MCCIDD;-><init>(Lcom/android/mms/util/IddUtils$1;)V

    iput-object v0, p0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    .line 62
    iget-object v0, p0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iput-object p1, v0, Lcom/android/mms/util/IddUtils$MCCIDD;->mcc:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iput-object p2, v0, Lcom/android/mms/util/IddUtils$MCCIDD;->idd:Ljava/lang/String;

    .line 64
    return-void
.end method
