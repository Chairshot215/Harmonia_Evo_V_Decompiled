.class public Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;
.super Ljava/lang/Object;
.source "ConversationListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fdn"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->name:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->number:Ljava/lang/String;

    return-void
.end method
