.class public Lcom/google/android/gm/provider/MailStore$CustomFromPreference;
.super Ljava/lang/Object;
.source "MailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFromPreference"
.end annotation


# instance fields
.field public isDefault:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public replyTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "isDefault"
    .parameter "replyTo"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->name:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->replyTo:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->isDefault:Ljava/lang/String;

    .line 158
    return-void
.end method
