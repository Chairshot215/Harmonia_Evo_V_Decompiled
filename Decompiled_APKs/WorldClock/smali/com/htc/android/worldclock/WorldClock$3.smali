.class Lcom/htc/android/worldclock/WorldClock$3;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/WorldClock;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$3;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1146
    return-void
.end method
