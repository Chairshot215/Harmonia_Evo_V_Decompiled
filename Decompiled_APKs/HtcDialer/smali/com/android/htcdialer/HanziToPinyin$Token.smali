.class public Lcom/android/htcdialer/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/android/htcdialer/HanziToPinyin$Token;->type:I

    .line 266
    iput-object p2, p0, Lcom/android/htcdialer/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 268
    return-void
.end method
