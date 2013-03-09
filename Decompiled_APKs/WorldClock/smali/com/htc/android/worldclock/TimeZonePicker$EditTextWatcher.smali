.class public Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 505
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 507
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 511
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 513
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 517
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 518
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->search(Ljava/lang/String;)V

    .line 519
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
