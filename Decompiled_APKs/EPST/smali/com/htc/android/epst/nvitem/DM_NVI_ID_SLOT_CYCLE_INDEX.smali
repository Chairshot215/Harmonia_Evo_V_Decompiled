.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_SLOT_CYCLE_INDEX.java"


# static fields
.field public static final OPTION0:Ljava/lang/String; = "00"

.field public static final OPTION1:Ljava/lang/String; = "01"

.field public static final OPTION2:Ljava/lang/String; = "02"

.field public static final OPTION3:Ljava/lang/String; = "03"

.field public static final OPTION4:Ljava/lang/String; = "04"

.field public static final OPTION5:Ljava/lang/String; = "05"

.field public static final OPTION6:Ljava/lang/String; = "06"

.field public static final OPTION7:Ljava/lang/String; = "07"


# instance fields
.field private SLOT_CYCLE_INDEX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->SLOT_CYCLE_INDEX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->SLOT_CYCLE_INDEX:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->mCurrentCmdData:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotCycleIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->SLOT_CYCLE_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->SLOT_CYCLE_INDEX:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSlotCycleIndex(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->SLOT_CYCLE_INDEX:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SLOT_CYCLE_INDEX;->read()V

    .line 35
    return-void
.end method
