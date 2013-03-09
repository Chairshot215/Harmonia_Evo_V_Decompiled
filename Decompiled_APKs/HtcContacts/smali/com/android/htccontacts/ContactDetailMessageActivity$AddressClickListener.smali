.class final Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;
.super Ljava/lang/Object;
.source "ContactDetailMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddressClickListener"
.end annotation


# instance fields
.field private mArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "array"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;->mArray:[Ljava/lang/String;

    .line 985
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 987
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;->mArray:[Ljava/lang/String;

    aget-object v1, v2, p2

    .line 989
    .local v1, addr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->canCompose(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$600(Lcom/android/htccontacts/ContactDetailMessageActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 996
    .local v0, actionIntent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 997
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 998
    return-void

    .line 993
    .end local v0           #actionIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const-string v4, ""

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #actionIntent:Landroid/content/Intent;
    goto :goto_0
.end method
