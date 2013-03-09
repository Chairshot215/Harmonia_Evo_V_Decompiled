.class public Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
.super Ljava/lang/Object;
.source "Touch_Input_Scoring_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Touch_Input_Scoring_Data"
.end annotation


# instance fields
.field public item_key:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->item_key:I

    return-void
.end method
