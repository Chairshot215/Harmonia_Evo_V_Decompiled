.class Lcom/htc/app/HtcRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "HtcRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcRingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/app/HtcRingtonePickerActivity$2;->this$0:Lcom/htc/app/HtcRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity$2;->this$0:Lcom/htc/app/HtcRingtonePickerActivity;

    #getter for: Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/app/HtcRingtonePickerActivity;->access$200(Lcom/htc/app/HtcRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 261
    return-void
.end method
