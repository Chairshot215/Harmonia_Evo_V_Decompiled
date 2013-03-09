.class Lcom/android/CSDFunctionG/Gsensortest$1;
.super Ljava/lang/Object;
.source "Gsensortest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/Gsensortest;->PassorFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/Gsensortest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Gsensortest;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/CSDFunctionG/Gsensortest$1;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 200
    const-string v0, "G-Sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$1;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Gsensortest;->finish()V

    .line 202
    return-void
.end method
