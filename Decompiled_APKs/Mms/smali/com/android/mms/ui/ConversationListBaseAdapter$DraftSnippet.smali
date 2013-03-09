.class public Lcom/android/mms/ui/ConversationListBaseAdapter$DraftSnippet;
.super Ljava/lang/Object;
.source "ConversationListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DraftSnippet"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field date:J

.field msgid:J

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseAdapter;

.field type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/ConversationListBaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter$DraftSnippet;->this$0:Lcom/android/mms/ui/ConversationListBaseAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
