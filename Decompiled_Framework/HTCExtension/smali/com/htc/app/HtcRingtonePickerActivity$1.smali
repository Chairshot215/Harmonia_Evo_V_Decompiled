.class Lcom/htc/app/HtcRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "HtcRingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/HtcRingtonePickerActivity;
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

    iput-object p1, p0, Lcom/htc/app/HtcRingtonePickerActivity$1;->this$0:Lcom/htc/app/HtcRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity$1;->this$0:Lcom/htc/app/HtcRingtonePickerActivity;

    #setter for: Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/htc/app/HtcRingtonePickerActivity;->access$002(Lcom/htc/app/HtcRingtonePickerActivity;I)I

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity$1;->this$0:Lcom/htc/app/HtcRingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/app/HtcRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/htc/app/HtcRingtonePickerActivity;->access$100(Lcom/htc/app/HtcRingtonePickerActivity;II)V

    return-void
.end method
