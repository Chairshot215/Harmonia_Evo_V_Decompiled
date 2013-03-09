.class public Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;
.super Ljava/lang/Object;
.source "LocationSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/LocationSearchCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchRetGroup"
.end annotation


# instance fields
.field public mGT:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

.field public mId:I

.field public mLv:I

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/laputa/engine/util/LocationSearchCmd;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/util/LocationSearchCmd;Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "gt"
    .parameter "id"
    .parameter "name"
    .parameter "lv"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->this$0:Lcom/htc/laputa/engine/util/LocationSearchCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;->NOGROUPING:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mGT:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mId:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mLv:I

    .line 106
    iput-object p2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mGT:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

    iput p3, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mId:I

    iput-object p4, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;->mLv:I

    .line 107
    return-void
.end method
