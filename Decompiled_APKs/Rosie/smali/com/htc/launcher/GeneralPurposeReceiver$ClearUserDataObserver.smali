.class Lcom/htc/launcher/GeneralPurposeReceiver$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "GeneralPurposeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/GeneralPurposeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/GeneralPurposeReceiver;


# direct methods
.method constructor <init>(Lcom/htc/launcher/GeneralPurposeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/launcher/GeneralPurposeReceiver$ClearUserDataObserver;->this$0:Lcom/htc/launcher/GeneralPurposeReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 154
    return-void
.end method
