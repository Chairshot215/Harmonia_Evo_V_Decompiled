.class Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;
.super Ljava/lang/Object;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupOrderData"
.end annotation


# instance fields
.field public deleteTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;-><init>()V

    return-void
.end method
