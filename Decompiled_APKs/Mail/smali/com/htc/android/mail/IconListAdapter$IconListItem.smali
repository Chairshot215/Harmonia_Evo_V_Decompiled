.class public Lcom/htc/android/mail/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mCommand:Lcom/htc/android/mail/MailCommon$Command;

.field private final mResource:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "resource"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mResource:I

    .line 62
    iput-object p1, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/htc/android/mail/MailCommon$Command;->UNDEFINED:Lcom/htc/android/mail/MailCommon$Command;

    iput-object v0, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mCommand:Lcom/htc/android/mail/MailCommon$Command;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/htc/android/mail/MailCommon$Command;)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "command"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mResource:I

    .line 68
    iput-object p1, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mCommand:Lcom/htc/android/mail/MailCommon$Command;

    .line 70
    return-void
.end method


# virtual methods
.method public getCommand()Lcom/htc/android/mail/MailCommon$Command;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mCommand:Lcom/htc/android/mail/MailCommon$Command;

    return-object v0
.end method

.method public getResource()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/android/mail/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
