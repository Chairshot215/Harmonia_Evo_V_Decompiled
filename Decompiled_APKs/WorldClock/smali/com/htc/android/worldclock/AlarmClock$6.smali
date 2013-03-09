.class Lcom/htc/android/worldclock/AlarmClock$6;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmClock;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$6;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 677
    return-void
.end method
