.class Lcom/htc/android/worldclock/HandleSetAlarm$1;
.super Ljava/lang/Object;
.source "HandleSetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/HandleSetAlarm;->CheckMaxAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/HandleSetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/HandleSetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/android/worldclock/HandleSetAlarm$1;->this$0:Lcom/htc/android/worldclock/HandleSetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm$1;->this$0:Lcom/htc/android/worldclock/HandleSetAlarm;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/HandleSetAlarm;->finish()V

    .line 185
    return-void
.end method
