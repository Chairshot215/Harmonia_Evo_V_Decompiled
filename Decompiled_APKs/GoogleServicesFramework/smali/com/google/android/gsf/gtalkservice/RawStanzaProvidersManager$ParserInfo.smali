.class public Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
.super Ljava/lang/Object;
.source "RawStanzaProvidersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserInfo"
.end annotation


# instance fields
.field elementName:Ljava/lang/String;

.field intentReceiverInfo:Landroid/content/ComponentName;

.field isReceiverEnabled:Z

.field nameSpace:Ljava/lang/String;

.field priority:I

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 0
    .parameter "name"
    .parameter "ns"
    .parameter "type"
    .parameter "cinfo"
    .parameter "enabled"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->elementName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->nameSpace:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->type:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    .line 67
    iput-boolean p5, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->isReceiverEnabled:Z

    .line 68
    return-void
.end method
