.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor$1;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->access$1202(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;Z)Z

    .line 1055
    return-void
.end method
