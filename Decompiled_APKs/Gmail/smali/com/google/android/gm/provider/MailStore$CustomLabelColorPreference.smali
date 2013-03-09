.class public Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;
.super Ljava/lang/Object;
.source "MailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLabelColorPreference"
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "textColor"
    .parameter "backgroundColor"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->textColor:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->backgroundColor:Ljava/lang/String;

    .line 138
    return-void
.end method
