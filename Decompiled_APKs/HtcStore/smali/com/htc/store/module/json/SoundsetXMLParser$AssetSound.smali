.class public Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;
.super Ljava/lang/Object;
.source "SoundsetXMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/json/SoundsetXMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssetSound"
.end annotation


# instance fields
.field public GUID:Ljava/lang/String;

.field public aui:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public corporation:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public preUrl:Ljava/lang/String;

.field public refType:Ljava/lang/String;

.field public reldate:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/module/json/SoundsetXMLParser;

.field public timestamp:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/store/module/json/SoundsetXMLParser;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->this$0:Lcom/htc/store/module/json/SoundsetXMLParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
