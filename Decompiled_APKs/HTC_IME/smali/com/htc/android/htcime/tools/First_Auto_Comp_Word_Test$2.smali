.class Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$2;
.super Ljava/lang/Object;
.source "First_Auto_Comp_Word_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->editTextSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$2;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$2;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #calls: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->promptForPauseTime()V
    invoke-static {v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$200(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V

    .line 99
    return-void
.end method
