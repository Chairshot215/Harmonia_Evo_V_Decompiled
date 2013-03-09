.class Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;
.super Ljava/lang/Object;
.source "MultiCalendarsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

.field final synthetic val$tmp_cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;->this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iput-object p2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_0
    return-void
.end method
