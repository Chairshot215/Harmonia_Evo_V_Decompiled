.class public Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
.super Ljava/lang/Object;
.source "JingleStanzaSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/JingleStanzaSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IQ"
.end annotation


# instance fields
.field extension:Ljava/lang/String;

.field from:Ljava/lang/String;

.field id:Ljava/lang/String;

.field to:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->id:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->from:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->to:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->type:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->extension:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->type:Ljava/lang/String;

    return-object v0
.end method
