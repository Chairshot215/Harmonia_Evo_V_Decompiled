.class Lcom/android/CSDFunctionG/buttontest$1;
.super Ljava/lang/Object;
.source "buttontest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/buttontest;->PassorFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/buttontest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/buttontest;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/CSDFunctionG/buttontest$1;->this$0:Lcom/android/CSDFunctionG/buttontest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 76
    const-string v0, "Button test end\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest$1;->this$0:Lcom/android/CSDFunctionG/buttontest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/buttontest;->finish()V

    .line 78
    return-void
.end method
