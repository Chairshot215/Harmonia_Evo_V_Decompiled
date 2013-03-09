.class public interface abstract Lcom/google/android/apps/uploader/googlemobile/common/ui/NativeDateTimeField;
.super Ljava/lang/Object;


# static fields
.field public static final MODE_DATE_ONLY:I = 0x1

.field public static final MODE_DATE_TIME:I = 0x3

.field public static final MODE_TIME_ONLY:I = 0x2


# virtual methods
.method public abstract display()V
.end method

.method public abstract getCancelCommand()Lcom/google/android/apps/uploader/googlemobile/common/ui/GoogleCommand;
.end method

.method public abstract getCommandListener()Lcom/google/android/apps/uploader/googlemobile/common/ui/GoogleCommandListener;
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getMode()I
.end method

.method public abstract getOkCommand()Lcom/google/android/apps/uploader/googlemobile/common/ui/GoogleCommand;
.end method

.method public abstract setCommandListener(Lcom/google/android/apps/uploader/googlemobile/common/ui/GoogleCommandListener;)V
.end method

.method public abstract setDate(Ljava/util/Date;)V
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setMode(I)V
.end method
