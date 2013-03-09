.class Lcom/android/settings/ModemLinkTypeEnabler$1;
.super Ljava/lang/Object;
.source "ModemLinkTypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ModemLinkTypeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkTypeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkTypeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/ModemLinkTypeEnabler$1;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$1;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #setter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v0, p2}, Lcom/android/settings/ModemLinkTypeEnabler;->access$002(Lcom/android/settings/ModemLinkTypeEnabler;I)I

    .line 90
    const-string v0, "ModemLinkType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
