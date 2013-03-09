.class public Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
.super Ljava/lang/Object;
.source "MultiCalendarsByAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowInfo"
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field mBottomRound:Z

.field final mData:I

.field mDivider:Z

.field final mId:J

.field final mName:Ljava/lang/String;

.field mTopRound:Z

.field final mType:I


# direct methods
.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "data"
    .parameter "name"
    .parameter "accountType"

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    .line 211
    iput-wide p2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mId:J

    .line 212
    iput p4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    .line 213
    iput-object p5, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mName:Ljava/lang/String;

    .line 214
    iput-object p6, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    .line 215
    return-void
.end method
