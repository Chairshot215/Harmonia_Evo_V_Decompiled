.class public interface abstract annotation Ljavax/annotation/RegEx;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/annotation/RegEx$Checker;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljavax/annotation/Syntax;
.end annotation

.annotation build Ljavax/annotation/meta/TypeQualifierNickname;
.end annotation
