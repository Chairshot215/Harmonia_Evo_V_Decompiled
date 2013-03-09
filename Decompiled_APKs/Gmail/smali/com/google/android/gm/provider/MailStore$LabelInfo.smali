.class public Lcom/google/android/gm/provider/MailStore$LabelInfo;
.super Ljava/lang/Object;
.source "MailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabelInfo"
.end annotation


# instance fields
.field public canonicalName:Ljava/lang/String;

.field public color:I

.field public name:Ljava/lang/String;

.field public numConversations:I

.field public numUnreadConversations:I

.field public visibility:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .parameter "canonicalName"
    .parameter "name"
    .parameter "numConversations"
    .parameter "numUnreadConversations"
    .parameter "color"
    .parameter "visibility"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->name:Ljava/lang/String;

    .line 118
    iput p3, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->numConversations:I

    .line 119
    iput p4, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->numUnreadConversations:I

    .line 120
    iput p5, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->color:I

    .line 121
    iput-object p6, p0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->visibility:Ljava/lang/String;

    .line 122
    return-void
.end method
