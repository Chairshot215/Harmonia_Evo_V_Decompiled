.class public Lcom/htc/android/mail/pim/VNode;
.super Ljava/lang/Object;
.source "VNode.java"


# instance fields
.field public VName:Ljava/lang/String;

.field public parseStatus:I

.field public propList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/pim/PropertyNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/VNode;->propList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/pim/VNode;->parseStatus:I

    return-void
.end method
