import React from "react";

export default function ProfileHeader({
  bannerUrl,
  avatarUrl,
  name,
  isLoading = false,
}) {
  const skeleton = "animate-pulse bg-slate-700";

  return (
    <section className="w-full bg-slate-950 text-white">
      <div className="relative">
        {isLoading ? (
          <div className={`h-48 w-full ${skeleton}`} />
        ) : (
          <img
            src={bannerUrl}
            alt=""
            className="h-48 w-full object-cover"
          />
        )}
        <div className="absolute left-1/2 top-32 h-28 w-28 -translate-x-1/2 rounded-full border-4 border-slate-950">
          {isLoading ? (
            <div className={`h-full w-full rounded-full ${skeleton}`} />
          ) : (
            <img
              src={avatarUrl}
              alt=""
              className="h-full w-full rounded-full object-cover"
            />
          )}
        </div>
      </div>
      <div className="flex h-16 items-center justify-center">
        {isLoading ? (
          <div className={`h-7 w-28 rounded ${skeleton}`} />
        ) : (
          <h1 className="text-2xl font-medium">{name}</h1>
        )}
      </div>
    </section>
  );
}
