.class Lcom/htc/android/epst/HtcNAM$4;
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
    .line 147
    iput-object p1, p0, Lcom/htc/android/epst/HtcNAM$4;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$4;->this$0:Lcom/htc/android/epst/HtcNAM;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/HtcNAM;->showDialog(I)V

    .line 151
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$4;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcNAM;->VerifyPassword()V

    .line 152
    return-void
.end method
