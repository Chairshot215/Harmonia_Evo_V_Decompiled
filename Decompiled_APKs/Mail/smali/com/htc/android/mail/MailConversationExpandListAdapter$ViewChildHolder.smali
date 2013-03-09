.class Lcom/htc/android/mail/MailConversationExpandListAdapter$ViewChildHolder;
.super Ljava/lang/Object;
.source "MailConversationExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailConversationExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewChildHolder"
.end annotation


# instance fields
.field from:Landroid/widget/TextView;

.field subject:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ViewChildHolder;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
