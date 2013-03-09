.class Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mBegin:J

.field final mEnd:J

.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(IIJJ)V
    .locals 0
    .parameter "position"
    .parameter "endDay"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1535
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    iput p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mPosition:I

    .line 1537
    iput p2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mEndDay:I

    .line 1538
    iput-wide p3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mBegin:J

    .line 1539
    iput-wide p5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mEnd:J

    .line 1540
    return-void
.end method
