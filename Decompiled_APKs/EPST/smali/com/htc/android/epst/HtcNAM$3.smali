.class Lcom/htc/android/epst/HtcNAM$3;
.super Ljava/lang/Object;
.source "HtcNAM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcNAM;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcNAM;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcNAM;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/android/epst/HtcNAM$3;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$3;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcNAM;->finish()V

    .line 158
    return-void
.end method
