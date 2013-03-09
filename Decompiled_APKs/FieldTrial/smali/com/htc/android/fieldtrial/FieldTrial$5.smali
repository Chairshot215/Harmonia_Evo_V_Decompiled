.class Lcom/htc/android/fieldtrial/FieldTrial$5;
.super Ljava/lang/Object;
.source "FieldTrial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/FieldTrial;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/FieldTrial;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/android/fieldtrial/FieldTrial$5;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$5;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->finish()V

    .line 333
    return-void
.end method
