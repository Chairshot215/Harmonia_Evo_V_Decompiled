.class Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
.super Ljava/lang/Object;
.source "HUXServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/HUXServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesTagsRelation"
.end annotation


# instance fields
.field public id:J

.field public messageId:J

.field public tagId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/server/HUXServer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;-><init>()V

    return-void
.end method
