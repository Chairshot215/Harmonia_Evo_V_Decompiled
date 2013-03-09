.class public interface abstract Lcom/android/internal/telephony/HtcIfCallerInfo;
.super Ljava/lang/Object;
.source "HtcIfCallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# virtual methods
.method public abstract addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public abstract getCachedPhotoSmall()Landroid/graphics/Bitmap;
.end method

.method public abstract getCachedRefPhotoSmall()Landroid/graphics/Bitmap;
.end method

.method public abstract getDate()Ljava/lang/String;
.end method

.method public abstract getOrigDialString()Ljava/lang/String;
.end method

.method public abstract getRecordNumber()J
.end method

.method public abstract getSnIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSnLabelClause()Ljava/lang/CharSequence;
.end method

.method public abstract getSnStatus()Ljava/lang/String;
.end method

.method public abstract getSnTimestamp()Ljava/lang/Long;
.end method

.method public abstract getStatusId()J
.end method

.method public abstract getUserData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract setAccountType(Ljava/lang/String;)V
.end method

.method public abstract setCachedPhotoSmall(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setCachedRefPhotoSamll(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setDate(Ljava/lang/String;)V
.end method

.method public abstract setOrigDialString(Ljava/lang/String;)V
.end method

.method public abstract setRecordNumber(J)V
.end method

.method public abstract setSnIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSnLabelClause(Ljava/lang/CharSequence;)V
.end method

.method public abstract setSnStatus(Ljava/lang/String;)V
.end method

.method public abstract setSnTimestamp(Ljava/lang/Long;)V
.end method

.method public abstract setStatusId(J)V
.end method
